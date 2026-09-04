.class public Ljp/classmethod/android/componentlibrary/widget/UITimePicker;
.super Landroid/widget/TimePicker;
.source "UITimePicker.java"


# instance fields
.field private factory:Ljp/classmethod/android/componentlibrary/widget/TimePickerControllerFactory;

.field private m_onTimeChangedListenerForLollipop:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p3, Ljp/classmethod/android/componentlibrary/widget/TimePickerControllerFactory;

    invoke-direct {p3}, Ljp/classmethod/android/componentlibrary/widget/TimePickerControllerFactory;-><init>()V

    iput-object p3, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->factory:Ljp/classmethod/android/componentlibrary/widget/TimePickerControllerFactory;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->m_onTimeChangedListenerForLollipop:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 90
    invoke-virtual {p3}, Ljp/classmethod/android/componentlibrary/widget/TimePickerControllerFactory;->getTimePickerController()Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    move-result-object p3

    iput-object p3, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    if-eqz p2, :cond_0

    .line 93
    sget-object p3, Lcom/metamoji/noteanytime/R$styleable;->UITimePicker:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UITimePicker_unit:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 96
    :try_start_0
    iget-object p3, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    invoke-virtual {p3, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->setIncrementTimeUnit(I)V
    :try_end_0
    .catch Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 98
    invoke-virtual {p2}, Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException;->printStackTrace()V

    .line 100
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_0
    iget-object p1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->overrideTimePicker(Ljp/classmethod/android/componentlibrary/widget/UITimePicker;Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    iget-object v1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget v1, v1, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->unit:I

    mul-int/2addr v0, v1

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOnTimeChangedListenerForLollipop()Landroid/widget/TimePicker$OnTimeChangedListener;
    .locals 1

    .line 47
    iget-object v0, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->m_onTimeChangedListenerForLollipop:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2

    .line 108
    iget-object v0, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    iget v1, v1, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->unit:I

    div-int/2addr v0, v1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    iget v1, v1, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->unit:I

    rem-int/2addr p1, v1

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 118
    iget-object p1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    invoke-virtual {p1}, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->getItemLength()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 123
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void

    .line 125
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setIncrementTimeUnit(ILjava/util/Calendar;)V
    .locals 1

    .line 131
    :try_start_0
    iget-object v0, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    invoke-virtual {v0, p1}, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->setIncrementTimeUnit(I)V
    :try_end_0
    .catch Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException;->printStackTrace()V

    .line 136
    :goto_0
    iget-object p1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->timePickerController:Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;

    invoke-virtual {p1, p0, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->overrideTimePicker(Ljp/classmethod/android/componentlibrary/widget/UITimePicker;Ljava/util/Calendar;)V

    return-void
.end method

.method public setOnTimeChangedListenerForLollipop(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->m_onTimeChangedListenerForLollipop:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
