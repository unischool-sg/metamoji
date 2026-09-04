.class public final enum Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;
.super Ljava/lang/Enum;
.source "FxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/flexible/FxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FxAnchorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

.field public static final enum BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

.field public static final enum CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

.field public static final enum LEFT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

.field public static final enum RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

.field public static final enum TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;
    .locals 5

    .line 170
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->LEFT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 171
    new-instance v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const-string v1, "BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const-string v1, "LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->LEFT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const-string v1, "CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 170
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->$values()[Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->$VALUES:[Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

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

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 170
    const-class v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;
    .locals 1

    .line 170
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->$VALUES:[Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0}, [Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    return-object v0
.end method
