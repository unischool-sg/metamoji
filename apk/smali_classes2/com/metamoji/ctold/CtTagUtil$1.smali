.class synthetic Lcom/metamoji/ctold/CtTagUtil$1;
.super Ljava/lang/Object;
.source "CtTagUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/CtTagUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

.field static final synthetic $SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

.field static final synthetic $SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

.field static final synthetic $SwitchMap$com$metamoji$ctold$search$CtValueType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 309
    invoke-static {}, Lcom/metamoji/ctold/search/CtValueType;->values()[Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v2}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v3, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_DAY:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v3}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v4, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_WEEK:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v4}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v5, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_MONTH:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v5}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v6, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_YEAR:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v6}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 277
    :catch_4
    invoke-static {}, Lcom/metamoji/ctold/property/CtPropertyType;->values()[Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    :try_start_5
    sget-object v6, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_BOOL:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v6}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    sget-object v6, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_NUMBER:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v6}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    sget-object v6, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_INTEGER:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v6}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    sget-object v6, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_STRING:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v6}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    sget-object v6, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v6}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v5, 0x6

    :try_start_a
    sget-object v6, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    sget-object v7, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v7}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v6, 0x7

    :try_start_b
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    sget-object v8, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_UNKNOWN:Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 215
    :catch_b
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectType;->values()[Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    :try_start_c
    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_NOTE:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VOICE:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VIDEO:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_EVENT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v8}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    const/16 v7, 0x8

    :try_start_13
    sget-object v8, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v9, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v9}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/16 v8, 0x9

    :try_start_14
    sget-object v9, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v10, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v10}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 177
    :catch_14
    invoke-static {}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->values()[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    :try_start_15
    sget-object v10, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v10}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v9, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v9}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_MAXIMUM_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
