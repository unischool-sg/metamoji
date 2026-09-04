.class public Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;
.super Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;
.source "ICSNumberPickerController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;-><init>()V

    return-void
.end method


# virtual methods
.method public overrideTimePicker(Ljp/classmethod/android/componentlibrary/widget/UITimePicker;Ljava/util/Calendar;)V
    .locals 7

    .line 25
    const-string v0, "android"

    const-string v1, "id"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    :try_start_0
    const-class v4, Landroid/widget/TimePicker;

    const-string v5, "mMinuteSpinner"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 35
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    .line 31
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_0

    .line 40
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "minute"

    invoke-virtual {v4, v5, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 41
    new-instance v5, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$1;

    invoke-direct {v5, p0, p1}, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$1;-><init>(Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;Ljp/classmethod/android/componentlibrary/widget/UITimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "hour"

    invoke-virtual {v5, v6, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 50
    new-instance v1, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;

    invoke-direct {v1, p0, p1}, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController$2;-><init>(Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;Ljp/classmethod/android/componentlibrary/widget/UITimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 60
    :cond_0
    iget v0, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;->unit:I

    invoke-static {v0}, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;->createMinItems(I)[Ljava/lang/String;

    move-result-object v0

    .line 61
    array-length v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;->maxIdx:I

    .line 62
    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v4, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 64
    iget v1, p0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;->maxIdx:I

    invoke-virtual {v4, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 65
    invoke-virtual {v4, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const/16 v0, 0xb

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    const/16 v0, 0xc

    .line 70
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setCurrentMinute(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    return-void
.end method
