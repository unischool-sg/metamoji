.class final enum Lcom/metamoji/ui/CustomMenuView$ViewState;
.super Ljava/lang/Enum;
.source "CustomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/CustomMenuView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/CustomMenuView$ViewState;

.field public static final enum ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

.field public static final enum CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

.field public static final enum CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

.field public static final enum GUIDANCEMESSAGEVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

.field public static final enum THUMBVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/CustomMenuView$ViewState;
    .locals 5

    .line 72
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v2, Lcom/metamoji/ui/CustomMenuView$ViewState;->CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$ViewState;->THUMBVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$ViewState;->GUIDANCEMESSAGEVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ui/CustomMenuView$ViewState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 74
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    const-string v1, "ACTIONOPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 75
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    const-string v1, "CONTEXTOPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 76
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    const-string v1, "THUMBVIEWOPEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->THUMBVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 77
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    const-string v1, "GUIDANCEMESSAGEVIEWOPEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->GUIDANCEMESSAGEVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 72
    invoke-static {}, Lcom/metamoji/ui/CustomMenuView$ViewState;->$values()[Lcom/metamoji/ui/CustomMenuView$ViewState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$ViewState;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/CustomMenuView$ViewState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 72
    const-class v0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/CustomMenuView$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/CustomMenuView$ViewState;
    .locals 1

    .line 72
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$ViewState;

    invoke-virtual {v0}, [Lcom/metamoji/ui/CustomMenuView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/CustomMenuView$ViewState;

    return-object v0
.end method
