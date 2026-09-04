.class Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;
.super Ljava/lang/Object;
.source "ICSNumberPickerController.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;->overrideTimePicker(Ljp/classmethod/android/componentlibrary/widget/UITimePicker;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;

.field final synthetic val$picker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;


# direct methods
.method constructor <init>(Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;Ljp/classmethod/android/componentlibrary/widget/UITimePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;->this$0:Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;

    iput-object p2, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;->val$picker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    .line 52
    iget-object p1, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;->val$picker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-virtual {p1}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getOnTimeChangedListenerForLollipop()Landroid/widget/TimePicker$OnTimeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p2, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;->val$picker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-virtual {p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;->val$picker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-virtual {v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method
