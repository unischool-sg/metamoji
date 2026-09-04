.class synthetic Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;
.super Ljava/lang/Object;
.source "DrLinkageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1537
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1424
    :catch_1
    invoke-static {}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ELEMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->SEGMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ARROW:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 1386
    :catch_4
    invoke-static {}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    :try_start_5
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->PATH_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->FRAME_RECT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ARROW_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 1364
    :catch_7
    invoke-static {}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    :try_start_8
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->FRAME_RECT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->HANDLE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->SEGMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
