.class public Lcom/metamoji/ctold/search/CtDateValue;
.super Ljava/lang/Object;
.source "CtDateValue.java"


# instance fields
.field private type:Lcom/metamoji/ctold/search/CtValueType;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/metamoji/ctold/search/CtValueType;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/ctold/search/CtDateValue;->type:Lcom/metamoji/ctold/search/CtValueType;

    .line 31
    iput-object p2, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method adjustToFirstDayOfWeek(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x7

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    const/4 v1, 0x5

    .line 84
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToMidnight(Ljava/util/Calendar;)V

    return-void
.end method

.method adjustToFirstOfMonth(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToMidnight(Ljava/util/Calendar;)V

    return-void
.end method

.method adjustToMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 76
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 77
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method adjustToNewYearsDay(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToFirstOfMonth(Ljava/util/Calendar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/search/CtDateValue;

    if-nez v1, :cond_1

    return v0

    .line 109
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/search/CtDateValue;->equalsCtDateValue(Lcom/metamoji/ctold/search/CtDateValue;)Z

    move-result p1

    return p1
.end method

.method public equalsCtDateValue(Lcom/metamoji/ctold/search/CtDateValue;)Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtDateValue;->type:Lcom/metamoji/ctold/search/CtValueType;

    iget-object v1, p1, Lcom/metamoji/ctold/search/CtDateValue;->type:Lcom/metamoji/ctold/search/CtValueType;

    invoke-static {v0, v1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDate()Ljava/util/Date;
    .locals 6

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/metamoji/ctold/search/CtDateValue$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    iget-object v2, p0, Lcom/metamoji/ctold/search/CtDateValue;->type:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v2}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_0

    .line 70
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToNewYearsDay(Ljava/util/Calendar;)V

    .line 68
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToFirstOfMonth(Ljava/util/Calendar;)V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToFirstDayOfWeek(Ljava/util/Calendar;)V

    .line 60
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/search/CtDateValue;->adjustToMidnight(Ljava/util/Calendar;)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getType()Lcom/metamoji/ctold/search/CtValueType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtDateValue;->type:Lcom/metamoji/ctold/search/CtValueType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtDateValue;->type:Lcom/metamoji/ctold/search/CtValueType;

    iget-object v1, p0, Lcom/metamoji/ctold/search/CtDateValue;->value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ctold/CtUtils;->objectHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
