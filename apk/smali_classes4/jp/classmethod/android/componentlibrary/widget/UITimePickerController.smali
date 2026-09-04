.class public abstract Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;
.super Ljava/lang/Object;
.source "UITimePickerController.java"


# static fields
.field protected static final MINUTES_MAX:I = 0x3c


# instance fields
.field protected maxIdx:I

.field protected unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->unit:I

    const/16 v0, 0x3b

    .line 23
    iput v0, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->maxIdx:I

    return-void
.end method

.method protected static createMinItems(I)[Ljava/lang/String;
    .locals 7

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3c

    .line 51
    div-int/2addr v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    mul-int v4, v3, p0

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getItemLength()I
    .locals 2

    const/16 v0, 0x3c

    .line 68
    iget v1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->unit:I

    div-int/2addr v0, v1

    return v0
.end method

.method public overrideTimePicker(Ljp/classmethod/android/componentlibrary/widget/UITimePicker;)V
    .locals 0

    return-void
.end method

.method public abstract overrideTimePicker(Ljp/classmethod/android/componentlibrary/widget/UITimePicker;Ljava/util/Calendar;)V
.end method

.method public setIncrementTimeUnit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException;
        }
    .end annotation

    const/16 v0, 0x3c

    .line 30
    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 33
    iput p1, p0, Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;->unit:I

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException;

    invoke-direct {p1}, Ljp/classmethod/android/componentlibrary/exception/IllegalNumberException;-><init>()V

    throw p1
.end method
