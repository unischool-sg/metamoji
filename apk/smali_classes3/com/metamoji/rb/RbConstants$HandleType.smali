.class public final enum Lcom/metamoji/rb/RbConstants$HandleType;
.super Ljava/lang/Enum;
.source "RbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/rb/RbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/rb/RbConstants$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum END_OF_HandleType:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Move:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_Bottom:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_Left:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_LowerLeft:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_Right:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_Top:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_UppderRight:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Resize_UpperLeft:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Rotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Rotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Scale_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum Scale_UppderLeft:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum StepRotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

.field public static final enum StepRotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/rb/RbConstants$HandleType;
    .locals 17

    .line 22
    sget-object v1, Lcom/metamoji/rb/RbConstants$HandleType;->Move:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v2, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v3, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v4, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Top:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v5, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Bottom:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v6, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_UpperLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v7, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_UppderRight:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v8, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_LowerLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v9, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v10, Lcom/metamoji/rb/RbConstants$HandleType;->Scale_UppderLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v11, Lcom/metamoji/rb/RbConstants$HandleType;->Scale_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v12, Lcom/metamoji/rb/RbConstants$HandleType;->Rotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v13, Lcom/metamoji/rb/RbConstants$HandleType;->Rotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v14, Lcom/metamoji/rb/RbConstants$HandleType;->StepRotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v15, Lcom/metamoji/rb/RbConstants$HandleType;->StepRotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    sget-object v16, Lcom/metamoji/rb/RbConstants$HandleType;->END_OF_HandleType:Lcom/metamoji/rb/RbConstants$HandleType;

    filled-new-array/range {v1 .. v16}, [Lcom/metamoji/rb/RbConstants$HandleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Move"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Move:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 26
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_Left"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 27
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 28
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_Top"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Top:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 29
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_Bottom"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_Bottom:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 30
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_UpperLeft"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_UpperLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 31
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_UppderRight"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_UppderRight:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 32
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_LowerLeft"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_LowerLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 33
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Resize_LowerRight"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Resize_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 35
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Scale_UppderLeft"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Scale_UppderLeft:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 36
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Scale_LowerRight"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Scale_LowerRight:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 38
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Rotate_Left"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Rotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 39
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "Rotate_Right"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->Rotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 41
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "StepRotate_Left"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->StepRotate_Left:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 42
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "StepRotate_Right"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->StepRotate_Right:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 45
    new-instance v0, Lcom/metamoji/rb/RbConstants$HandleType;

    const-string v1, "END_OF_HandleType"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->END_OF_HandleType:Lcom/metamoji/rb/RbConstants$HandleType;

    .line 22
    invoke-static {}, Lcom/metamoji/rb/RbConstants$HandleType;->$values()[Lcom/metamoji/rb/RbConstants$HandleType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->$VALUES:[Lcom/metamoji/rb/RbConstants$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static count()I
    .locals 1

    .line 50
    sget-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->END_OF_HandleType:Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$HandleType;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/rb/RbConstants$HandleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/rb/RbConstants$HandleType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/rb/RbConstants$HandleType;
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/rb/RbConstants$HandleType;->$VALUES:[Lcom/metamoji/rb/RbConstants$HandleType;

    invoke-virtual {v0}, [Lcom/metamoji/rb/RbConstants$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/rb/RbConstants$HandleType;

    return-object v0
.end method
