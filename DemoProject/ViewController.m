

#import "ViewController.h"
#import "SecondViewController.h"
#import "InfoModal.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *testingTextView;
@property (weak, nonatomic) IBOutlet UITextField *testingTextField;
@property (weak, nonatomic) IBOutlet UILabel *testingLabel;
@property (weak, nonatomic) IBOutlet UIButton *testingButton;

@end

@implementation ViewController

#pragma mark - UIViewController Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setInitailValue];
}

-(void)setInitailValue {
    
    self.testingTextView.text = @"testingButtonValue";
    self.testingTextField.text = @"textfieldValue";
    self.testingLabel.text = @"testingLabelValue";
    [self.testingButton setTitle:@"buttonValue" forState:UIControlStateNormal];
}

- (IBAction)transferValue:(UIButton *)sender {
    SecondViewController *secondView = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];

    secondView.button = [self.testingButton titleForState:UIControlStateNormal];
    secondView.textview = self.testingTextView.text;
    secondView.textfield = self.testingTextField.text;
    secondView.label = self.testingLabel.text;

    //What is the difference in to fetch the value of button like below
    //secondView.button = self.testingButton.titleLabel.text;

    //Not change the value even changed the value like below
    //[self.testingButton setTitle:@"" forState:UIControlStateNormal];
    
    InfoModal *modalObj =  [[InfoModal alloc]init];
    modalObj.button = [self.testingButton titleForState:UIControlStateNormal];
    modalObj.textview = self.testingTextView.text;
    modalObj.textfield = self.testingTextField.text;
    modalObj.label = self.testingLabel.text;

    NSLog(@"#######################################################");
    NSLog(@"BUTTON = %@",modalObj.button);
    NSLog(@"TEXT VIEW = %@",modalObj.textview);
    NSLog(@"TEXT FIELD = %@",modalObj.textfield);
    NSLog(@"LABEL = %@",modalObj.label);
    NSLog(@"#######################################################");

    [self.navigationController pushViewController:secondView animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
