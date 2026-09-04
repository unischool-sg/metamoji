.class public Lcom/metamoji/ctold/search/CtPropertyCondition;
.super Ljava/lang/Object;
.source "CtPropertyCondition.java"


# instance fields
.field private name:Ljava/lang/String;

.field private operator:Lcom/metamoji/ctold/search/CtOperator;

.field private type:Lcom/metamoji/ctold/property/CtPropertyType;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/ctold/property/CtPropertyType;Lcom/metamoji/ctold/search/CtOperator;Ljava/lang/Object;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/metamoji/ctold/search/CtPropertyCondition$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    invoke-virtual {p2}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 110
    :pswitch_0
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    if-ne p3, v0, :cond_1

    goto/16 :goto_0

    .line 100
    :pswitch_1
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    if-ne p3, v0, :cond_1

    goto/16 :goto_0

    .line 86
    :pswitch_2
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_STARTS_WITH:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_ENDS_WITH:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 76
    :pswitch_3
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 66
    :pswitch_4
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 60
    :pswitch_5
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    if-ne p3, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->name:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 128
    iput-object p3, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->operator:Lcom/metamoji/ctold/search/CtOperator;

    .line 129
    iput-object p4, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    return-void

    .line 124
    :cond_1
    :goto_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invalid parameters: propertyName=%s, type=%s, op=%s, value=%s"

    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CT0037"

    invoke-direct {v0, p2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

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

.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "p"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->name:Ljava/lang/String;

    .line 139
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/property/CtPropertyType;->enumOf(I)Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 140
    const-string v0, "o"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/search/CtOperator;->enumOf(I)Lcom/metamoji/ctold/search/CtOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->operator:Lcom/metamoji/ctold/search/CtOperator;

    .line 141
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v2, "v"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    return-void

    .line 142
    :cond_1
    :goto_0
    const-string v0, "y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/search/CtValueType;->enumOf(I)Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

    if-ne v0, v1, :cond_2

    .line 144
    new-instance v1, Lcom/metamoji/ctold/search/CtDateValue;

    new-instance v3, Ljava/util/Date;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v0, v3}, Lcom/metamoji/ctold/search/CtDateValue;-><init>(Lcom/metamoji/ctold/search/CtValueType;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    return-void

    .line 146
    :cond_2
    new-instance v1, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/metamoji/ctold/search/CtDateValue;-><init>(Lcom/metamoji/ctold/search/CtValueType;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v1, "p"

    iget-object v2, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/property/CtPropertyType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->operator:Lcom/metamoji/ctold/search/CtOperator;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtOperator;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "o"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v2, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v3, "v"

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v2, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 200
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtDateValue;->getType()Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "y"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v2, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

    .line 207
    iget-object v4, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 203
    check-cast v4, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-virtual {v4}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 204
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v4

    .line 205
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    :cond_2
    check-cast v4, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-virtual {v4}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Lcom/metamoji/ctold/search/CtOperator;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->operator:Lcom/metamoji/ctold/search/CtOperator;

    return-object v0
.end method

.method public getResolvedValue()Ljava/lang/Object;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    return-object v0

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/ctold/search/CtDateValue;

    if-eqz v1, :cond_2

    .line 225
    check-cast v0, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-virtual {v0}, Lcom/metamoji/ctold/search/CtDateValue;->getDate()Ljava/util/Date;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getType()Lcom/metamoji/ctold/property/CtPropertyType;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->type:Lcom/metamoji/ctold/property/CtPropertyType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtPropertyCondition;->value:Ljava/lang/Object;

    return-object v0
.end method
