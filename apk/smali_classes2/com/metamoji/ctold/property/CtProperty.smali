.class public Lcom/metamoji/ctold/property/CtProperty;
.super Ljava/lang/Object;
.source "CtProperty.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/metamoji/ctold/property/CtProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private type:Lcom/metamoji/ctold/property/CtPropertyType;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_UNKNOWN:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/property/CtPropertyType;->getValue()I

    move-result v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/property/CtPropertyType;->enumOf(I)Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 46
    sget-object v0, Lcom/metamoji/ctold/property/CtProperty$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    const-wide/16 v3, 0x0

    const-string v5, "value"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    .line 68
    :pswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, v5, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-long v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    .line 64
    :pswitch_1
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, v5, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-long v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    .line 60
    :pswitch_2
    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    .line 56
    :pswitch_3
    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    .line 52
    :pswitch_4
    invoke-interface {p1, v5, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    :pswitch_5
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v5, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    .line 87
    sget-object p1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_NUMBER:Lcom/metamoji/ctold/property/CtPropertyType;

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 88
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    .line 93
    sget-object p1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_INTEGER:Lcom/metamoji/ctold/property/CtPropertyType;

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/ctold/property/CtPropertyType;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 40
    iput-object p3, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    .line 99
    sget-object p1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_STRING:Lcom/metamoji/ctold/property/CtPropertyType;

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 100
    iput-object p2, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 106
    sget-object p1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p2, 0xb

    const/4 p3, 0x0

    .line 109
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 110
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 111
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 112
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void

    .line 115
    :cond_0
    sget-object p1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 116
    iput-object p2, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    .line 81
    sget-object p1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_BOOL:Lcom/metamoji/ctold/property/CtPropertyType;

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 82
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/metamoji/ctold/property/CtProperty;)I
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    iget-object v1, p1, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v0, v1}, Lcom/metamoji/ctold/property/CtPropertyType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 282
    :cond_1
    sget-object v0, Lcom/metamoji/ctold/property/CtProperty$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    iget-object p1, p1, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object p1, p1, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 286
    :pswitch_3
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    iget-object p1, p1, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    .line 284
    :pswitch_4
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/metamoji/ctold/property/CtProperty;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/property/CtProperty;->compareTo(Lcom/metamoji/ctold/property/CtProperty;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 309
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/property/CtProperty;

    if-nez v1, :cond_1

    return v0

    .line 312
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/property/CtProperty;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/property/CtProperty;->equalsCtProperty(Lcom/metamoji/ctold/property/CtProperty;)Z

    move-result p1

    return p1
.end method

.method public equalsCtProperty(Lcom/metamoji/ctold/property/CtProperty;)Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    iget-object v1, p1, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-static {v0, v1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBooleanValue()Z
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 153
    :cond_1
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 154
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public getDateTimeValue()Ljava/util/Date;
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 217
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 218
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 219
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 223
    :catchall_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 225
    :cond_1
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 226
    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 228
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 200
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 201
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 202
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 206
    :catchall_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 208
    :cond_1
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 209
    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 211
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 163
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 165
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    return-wide v2
.end method

.method public getLongValue()J
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 177
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 179
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    return-wide v2
.end method

.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 233
    const-string v0, "TagProperty"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 234
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 235
    const-string v0, "name"

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/property/CtPropertyType;->getValue()I

    move-result v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcom/metamoji/ctold/property/CtProperty$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "value"

    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p1

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p1

    .line 242
    :pswitch_3
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p1

    .line 239
    :pswitch_4
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 192
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 194
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/metamoji/ctold/property/CtPropertyType;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/metamoji/ctold/property/CtProperty;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ctold/property/CtProperty;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    iget-object v2, p0, Lcom/metamoji/ctold/property/CtProperty;->value:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ctold/CtUtils;->objectHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
