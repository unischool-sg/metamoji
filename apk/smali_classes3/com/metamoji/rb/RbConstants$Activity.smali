.class public final enum Lcom/metamoji/rb/RbConstants$Activity;
.super Ljava/lang/Enum;
.source "RbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/rb/RbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/rb/RbConstants$Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum BODY:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_FREE_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_LEFT_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_MIDPOINT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_MIDPOIT_OR_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_STEP_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_TOP_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_TO_RESIZE:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_TO_RESIZE_OR_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_TO_ROTATE:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLES_TO_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_LOWER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_SCALE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_SCALE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_STEP_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_STEP_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_TOP:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum HANDLE_UPPER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

.field public static final enum NONE:Lcom/metamoji/rb/RbConstants$Activity;


# instance fields
.field private m_activity:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/rb/RbConstants$Activity;
    .locals 29

    .line 58
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v4, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v5, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_TOP:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v6, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v7, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v8, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_UPPER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v9, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LOWER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v10, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v11, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_SCALE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v12, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_SCALE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v13, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v14, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v15, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_STEP_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v16, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_STEP_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v17, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_LEFT_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v18, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TOP_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v19, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_MIDPOINT:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v20, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v21, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_MIDPOIT_OR_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v22, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v23, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v24, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE_OR_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v25, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_FREE_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v26, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_STEP_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v27, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_ROTATE:Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v28, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    filled-new-array/range {v1 .. v28}, [Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 60
    new-instance v0, Lcom/metamoji/rb/RbConstants$Activity;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    .line 62
    new-instance v0, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v1, Lcom/metamoji/rb/RbConstants$HandleType;->Move:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    const-string v3, "BODY"

    invoke-direct {v0, v3, v2, v1}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    .line 65
    new-instance v0, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v1, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v1

    shl-int v1, v2, v1

    const-string v3, "HANDLE_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 66
    new-instance v1, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v3, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v3}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v3

    shl-int v3, v2, v3

    const-string v4, "HANDLE_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v5, v3}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 67
    new-instance v3, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v4, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Top:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v4}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v4

    shl-int v4, v2, v4

    const-string v5, "HANDLE_TOP"

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6, v4}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_TOP:Lcom/metamoji/rb/RbConstants$Activity;

    .line 68
    new-instance v4, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v5, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Bottom:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v5}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v5

    shl-int v5, v2, v5

    const-string v6, "HANDLE_BOTTOM"

    const/4 v7, 0x5

    invoke-direct {v4, v6, v7, v5}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

    .line 70
    new-instance v5, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v6, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_UpperLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v6}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v6

    shl-int v6, v2, v6

    const-string v7, "HANDLE_UPPER_LEFT"

    const/4 v8, 0x6

    invoke-direct {v5, v7, v8, v6}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 71
    new-instance v6, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v7, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_UppderRight:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v7}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v7

    shl-int v7, v2, v7

    const-string v8, "HANDLE_UPPER_RIGHT"

    const/4 v9, 0x7

    invoke-direct {v6, v8, v9, v7}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_UPPER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 72
    new-instance v7, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v8, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_LowerLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v8}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v8

    shl-int v8, v2, v8

    const-string v9, "HANDLE_LOWER_LEFT"

    const/16 v10, 0x8

    invoke-direct {v7, v9, v10, v8}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LOWER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 73
    new-instance v8, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v9, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v9}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v9

    shl-int v9, v2, v9

    const-string v10, "HANDLE_LOWER_RIGHT"

    const/16 v11, 0x9

    invoke-direct {v8, v10, v11, v9}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 76
    new-instance v9, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v10, Lcom/metamoji/rb/RbConstants$HandleType;->Scale_UppderLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v10}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v10

    shl-int v10, v2, v10

    const-string v11, "HANDLE_SCALE_UPPER_LEFT"

    const/16 v12, 0xa

    invoke-direct {v9, v11, v12, v10}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_SCALE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 77
    new-instance v10, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v11, Lcom/metamoji/rb/RbConstants$HandleType;->Scale_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v11}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v11

    shl-int v11, v2, v11

    const-string v12, "HANDLE_SCALE_LOWER_RIGHT"

    const/16 v13, 0xb

    invoke-direct {v10, v12, v13, v11}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_SCALE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 80
    new-instance v11, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v12, Lcom/metamoji/rb/RbConstants$HandleType;->Rotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v12}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v12

    shl-int v12, v2, v12

    const-string v13, "HANDLE_ROTATION_LEFT"

    const/16 v14, 0xc

    invoke-direct {v11, v13, v14, v12}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 81
    new-instance v12, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v13, Lcom/metamoji/rb/RbConstants$HandleType;->Rotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v13}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v13

    shl-int v13, v2, v13

    const-string v14, "HANDLE_ROTATION_RIGHT"

    const/16 v15, 0xd

    invoke-direct {v12, v14, v15, v13}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 83
    new-instance v13, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v14, Lcom/metamoji/rb/RbConstants$HandleType;->StepRotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v14}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v14

    shl-int v14, v2, v14

    const-string v15, "HANDLE_STEP_ROTATION_LEFT"

    move/from16 v16, v2

    const/16 v2, 0xe

    invoke-direct {v13, v15, v2, v14}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_STEP_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 84
    new-instance v2, Lcom/metamoji/rb/RbConstants$Activity;

    sget-object v14, Lcom/metamoji/rb/RbConstants$HandleType;->StepRotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v14}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v14

    shl-int v14, v16, v14

    const-string v15, "HANDLE_STEP_ROTATION_RIGHT"

    move-object/from16 v16, v0

    const/16 v0, 0xf

    invoke-direct {v2, v15, v0, v14}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_STEP_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 86
    new-instance v0, Lcom/metamoji/rb/RbConstants$Activity;

    .line 87
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v14

    .line 88
    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    or-int/2addr v1, v14

    const-string v14, "HANDLES_LEFT_RIGHT"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15, v1}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_LEFT_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 90
    new-instance v1, Lcom/metamoji/rb/RbConstants$Activity;

    .line 91
    invoke-virtual {v3}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v3

    .line 92
    invoke-virtual {v4}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    or-int/2addr v3, v4

    const-string v4, "HANDLES_TOP_BOTTOM"

    const/16 v14, 0x11

    invoke-direct {v1, v4, v14, v3}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TOP_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

    .line 94
    new-instance v3, Lcom/metamoji/rb/RbConstants$Activity;

    .line 95
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v0

    .line 96
    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "HANDLES_MIDPOINT"

    const/16 v4, 0x12

    invoke-direct {v3, v1, v4, v0}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_MIDPOINT:Lcom/metamoji/rb/RbConstants$Activity;

    .line 98
    new-instance v0, Lcom/metamoji/rb/RbConstants$Activity;

    .line 99
    invoke-virtual {v5}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    .line 100
    invoke-virtual {v6}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    or-int/2addr v1, v4

    .line 101
    invoke-virtual {v7}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    or-int/2addr v1, v4

    .line 102
    invoke-virtual {v8}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    or-int/2addr v1, v4

    const-string v4, "HANDLES_CORNER"

    const/16 v5, 0x13

    invoke-direct {v0, v4, v5, v1}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

    .line 104
    new-instance v1, Lcom/metamoji/rb/RbConstants$Activity;

    .line 105
    invoke-virtual {v3}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    .line 106
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v5

    or-int/2addr v4, v5

    const-string v5, "HANDLES_MIDPOIT_OR_CORNER"

    const/16 v6, 0x14

    invoke-direct {v1, v5, v6, v4}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_MIDPOIT_OR_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

    .line 108
    new-instance v1, Lcom/metamoji/rb/RbConstants$Activity;

    .line 109
    invoke-virtual {v3}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v3

    .line 110
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v0

    or-int/2addr v0, v3

    const-string v3, "HANDLES_TO_RESIZE"

    const/16 v4, 0x15

    invoke-direct {v1, v3, v4, v0}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE:Lcom/metamoji/rb/RbConstants$Activity;

    .line 112
    new-instance v0, Lcom/metamoji/rb/RbConstants$Activity;

    .line 113
    invoke-virtual {v9}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v3

    .line 114
    invoke-virtual {v10}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    or-int/2addr v3, v4

    const-string v4, "HANDLES_TO_SCALE"

    const/16 v5, 0x16

    invoke-direct {v0, v4, v5, v3}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

    .line 116
    new-instance v3, Lcom/metamoji/rb/RbConstants$Activity;

    .line 117
    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    .line 118
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v5

    or-int/2addr v4, v5

    const-string v5, "HANDLES_TO_RESIZE_OR_SCALE"

    const/16 v6, 0x17

    invoke-direct {v3, v5, v6, v4}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE_OR_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

    .line 120
    new-instance v3, Lcom/metamoji/rb/RbConstants$Activity;

    .line 121
    invoke-virtual {v11}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    .line 122
    invoke-virtual {v12}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v5

    or-int/2addr v4, v5

    const-string v5, "HANDLES_FREE_ROTATION"

    const/16 v6, 0x18

    invoke-direct {v3, v5, v6, v4}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_FREE_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

    .line 124
    new-instance v4, Lcom/metamoji/rb/RbConstants$Activity;

    .line 125
    invoke-virtual {v13}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v5

    .line 126
    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v2

    or-int/2addr v2, v5

    const-string v5, "HANDLES_STEP_ROTATION"

    const/16 v6, 0x19

    invoke-direct {v4, v5, v6, v2}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_STEP_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

    .line 128
    new-instance v2, Lcom/metamoji/rb/RbConstants$Activity;

    .line 129
    invoke-virtual {v3}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v3

    .line 130
    invoke-virtual {v4}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    or-int/2addr v3, v4

    const-string v4, "HANDLES_TO_ROTATE"

    const/16 v5, 0x1a

    invoke-direct {v2, v4, v5, v3}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_ROTATE:Lcom/metamoji/rb/RbConstants$Activity;

    .line 132
    new-instance v3, Lcom/metamoji/rb/RbConstants$Activity;

    .line 133
    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    .line 134
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v0

    or-int/2addr v0, v1

    .line 135
    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "HANDLES_ALL"

    const/16 v2, 0x1b

    invoke-direct {v3, v1, v2, v0}, Lcom/metamoji/rb/RbConstants$Activity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    .line 58
    invoke-static {}, Lcom/metamoji/rb/RbConstants$Activity;->$values()[Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object v0

    sput-object v0, Lcom/metamoji/rb/RbConstants$Activity;->$VALUES:[Lcom/metamoji/rb/RbConstants$Activity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/metamoji/rb/RbConstants$Activity;->m_activity:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/rb/RbConstants$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    const-class v0, Lcom/metamoji/rb/RbConstants$Activity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/rb/RbConstants$Activity;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/rb/RbConstants$Activity;
    .locals 1

    .line 58
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->$VALUES:[Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v0}, [Lcom/metamoji/rb/RbConstants$Activity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/rb/RbConstants$Activity;

    return-object v0
.end method


# virtual methods
.method public toValule()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/metamoji/rb/RbConstants$Activity;->m_activity:I

    return v0
.end method
