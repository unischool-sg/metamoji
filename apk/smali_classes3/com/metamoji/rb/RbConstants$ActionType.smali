.class public final enum Lcom/metamoji/rb/RbConstants$ActionType;
.super Ljava/lang/Enum;
.source "RbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/rb/RbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/rb/RbConstants$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/rb/RbConstants$ActionType;

.field public static final enum MOVED:Lcom/metamoji/rb/RbConstants$ActionType;

.field public static final enum REACTED:Lcom/metamoji/rb/RbConstants$ActionType;

.field public static final enum RESIZED:Lcom/metamoji/rb/RbConstants$ActionType;

.field public static final enum ROTATED:Lcom/metamoji/rb/RbConstants$ActionType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/rb/RbConstants$ActionType;
    .locals 4

    .line 15
    sget-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->REACTED:Lcom/metamoji/rb/RbConstants$ActionType;

    sget-object v1, Lcom/metamoji/rb/RbConstants$ActionType;->MOVED:Lcom/metamoji/rb/RbConstants$ActionType;

    sget-object v2, Lcom/metamoji/rb/RbConstants$ActionType;->RESIZED:Lcom/metamoji/rb/RbConstants$ActionType;

    sget-object v3, Lcom/metamoji/rb/RbConstants$ActionType;->ROTATED:Lcom/metamoji/rb/RbConstants$ActionType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/rb/RbConstants$ActionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/metamoji/rb/RbConstants$ActionType;

    const-string v1, "REACTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->REACTED:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 17
    new-instance v0, Lcom/metamoji/rb/RbConstants$ActionType;

    const-string v1, "MOVED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->MOVED:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 18
    new-instance v0, Lcom/metamoji/rb/RbConstants$ActionType;

    const-string v1, "RESIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->RESIZED:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 19
    new-instance v0, Lcom/metamoji/rb/RbConstants$ActionType;

    const-string v1, "ROTATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/rb/RbConstants$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->ROTATED:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 15
    invoke-static {}, Lcom/metamoji/rb/RbConstants$ActionType;->$values()[Lcom/metamoji/rb/RbConstants$ActionType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->$VALUES:[Lcom/metamoji/rb/RbConstants$ActionType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/rb/RbConstants$ActionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    const-class v0, Lcom/metamoji/rb/RbConstants$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/rb/RbConstants$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/rb/RbConstants$ActionType;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->$VALUES:[Lcom/metamoji/rb/RbConstants$ActionType;

    invoke-virtual {v0}, [Lcom/metamoji/rb/RbConstants$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/rb/RbConstants$ActionType;

    return-object v0
.end method
