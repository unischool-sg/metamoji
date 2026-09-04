.class public Lcom/metamoji/ui/DateTimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mDateTimeCallBack:Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;

.field private mInitialDay:I

.field private mInitialHour:I

.field private mInitialMinute:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

.field private final mTitleDateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;IILjava/util/Date;Z)V
    .locals 11

    .line 74
    invoke-direct/range {p0 .. p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDateTimeCallBack:Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;

    .line 78
    new-instance p2, Ljava/util/GregorianCalendar;

    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    move-object/from16 v0, p5

    .line 79
    invoke-virtual {p2, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialYear:I

    const/4 v1, 0x2

    .line 82
    invoke-virtual {p2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMonth:I

    const/4 v2, 0x5

    .line 83
    invoke-virtual {p2, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialDay:I

    const/16 v2, 0xb

    .line 84
    invoke-virtual {p2, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialHour:I

    const/16 v2, 0xc

    .line 85
    invoke-virtual {p2, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMinute:I

    const/4 p2, 0x3

    .line 87
    invoke-static {v1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 90
    iget v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialDay:I

    iget v5, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialHour:I

    iget v6, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMinute:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/DateTimePickerDialog;->updateTitle(IIIII)V

    const p2, 0x104000a

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p2, p0}, Lcom/metamoji/ui/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p2, 0x1040000

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, p2, v2}, Lcom/metamoji/ui/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 96
    sget p2, Lcom/metamoji/noteanytime/R$layout;->dialog_datetime_picker:I

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 99
    sget p2, Lcom/metamoji/noteanytime/R$id;->date_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/DatePicker;

    iput-object p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    if-lez p3, :cond_0

    .line 102
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v2, p3, v3, v0}, Ljava/util/GregorianCalendar;->set(III)V

    .line 104
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_0
    if-lez p4, :cond_1

    .line 107
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    add-int/lit8 p3, p4, -0x1

    const/16 v0, 0xa

    const/16 v2, 0x1e

    .line 110
    invoke-virtual {v4, p3, v0, v2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 111
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    const/16 v9, 0x3b

    const/16 v10, 0x3b

    const/16 v6, 0xb

    const/16 v7, 0x1f

    const/16 v8, 0x17

    move v5, p4

    .line 114
    invoke-virtual/range {v4 .. v10}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 115
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 117
    :cond_1
    iget p3, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialYear:I

    iget v0, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMonth:I

    iget v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialDay:I

    invoke-virtual {p2, p3, v0, v2, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    const/high16 p3, 0x60000

    .line 120
    invoke-virtual {p2, p3}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    .line 122
    sget p2, Lcom/metamoji/noteanytime/R$id;->time_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    iput-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    .line 123
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 124
    iget p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialHour:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 125
    iget p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMinute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {p1, p0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 128
    invoke-virtual {p1, p0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setOnTimeChangedListenerForLollipop(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 131
    invoke-virtual {p1, p3}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setDescendantFocusability(I)V

    return-void
.end method

.method private updateTitle(IIIII)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 151
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 152
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 153
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 155
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    iget-object p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DateTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 135
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDateTimeCallBack:Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDateTimeCallBack:Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;

    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    .line 140
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 141
    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 142
    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    .line 143
    invoke-virtual {p1}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    .line 144
    invoke-virtual {p1}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 137
    invoke-interface/range {v0 .. v7}, Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V

    :cond_0
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 186
    iput p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialYear:I

    .line 187
    iput p3, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMonth:I

    .line 188
    iput p4, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialDay:I

    .line 189
    iget v4, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialHour:I

    iget v5, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMinute:I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/DateTimePickerDialog;->updateTitle(IIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .line 171
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 173
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 174
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 175
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 176
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 177
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 178
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 179
    iget-object p1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    move-object v1, p0

    .line 180
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/DateTimePickerDialog;->updateTitle(IIIII)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 160
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-virtual {v1}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hourOfDay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    invoke-virtual {v1}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 6

    .line 194
    iput p2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialHour:I

    .line 195
    iput p3, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMinute:I

    .line 196
    iget v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mInitialDay:I

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/DateTimePickerDialog;->updateTitle(IIIII)V

    return-void
.end method

.method public setIncrementTimeUnit(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mTimePicker:Ljp/classmethod/android/componentlibrary/widget/UITimePicker;

    iget-object v1, p0, Lcom/metamoji/ui/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, v1}, Ljp/classmethod/android/componentlibrary/widget/UITimePicker;->setIncrementTimeUnit(ILjava/util/Calendar;)V

    return-void
.end method
