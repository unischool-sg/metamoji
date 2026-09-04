.class synthetic Lcom/metamoji/un/text/DataUtil$1;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/DataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

.field static final synthetic $SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

.field static final synthetic $SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

.field static final synthetic $SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$Align:[I

.field static final synthetic $SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$ListKind:[I

.field static final synthetic $SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1190
    invoke-static {}, Lcom/metamoji/un/text/model/UnitBorderStyle;->values()[Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style1:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    sget-object v3, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style2:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    sget-object v4, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style3:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    sget-object v5, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style4:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    sget-object v6, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    sget-object v7, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style6:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    sget-object v8, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style7:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 1113
    :catch_6
    invoke-static {}, Lcom/metamoji/un/text/model/RuledLineStyle;->values()[Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    :try_start_7
    sget-object v8, Lcom/metamoji/un/text/model/RuledLineStyle;->L10:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v8, Lcom/metamoji/un/text/model/RuledLineStyle;->L11:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v8, Lcom/metamoji/un/text/model/RuledLineStyle;->L12:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v8, Lcom/metamoji/un/text/model/RuledLineStyle;->L13:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v8, Lcom/metamoji/un/text/model/RuledLineStyle;->L14:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v7, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v8, Lcom/metamoji/un/text/model/RuledLineStyle;->L15:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v7, Lcom/metamoji/un/text/model/RuledLineStyle;->L16:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v7

    aput v6, v5, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v6, Lcom/metamoji/un/text/model/RuledLineStyle;->L17:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v6, Lcom/metamoji/un/text/model/RuledLineStyle;->L20:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    sget-object v6, Lcom/metamoji/un/text/model/RuledLineStyle;->L22:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 733
    :catch_10
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->values()[Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    :try_start_11
    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 705
    :catch_13
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->values()[Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    :try_start_14
    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->PLAIN:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->CUBIC2SURFACE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 495
    :catch_16
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$ListKind:[I

    :try_start_17
    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->BulletedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$ListKind:[I

    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NumberedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 462
    :catch_18
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$Align:[I

    :try_start_19
    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$Align:[I

    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$Align:[I

    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 403
    :catch_1b
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I

    :try_start_1c
    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithRightParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I

    sget-object v5, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->AlphabetCapital:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsAndPeriod:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method
