.class public final enum Lcom/metamoji/ui/CustomMenuView$MenuDirection;
.super Ljava/lang/Enum;
.source "CustomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/CustomMenuView$MenuDirection;

.field public static final enum MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

.field public static final enum MENU_RIGHT:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

.field public static final enum MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/CustomMenuView$MenuDirection;
    .locals 3

    .line 86
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_RIGHT:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const-string v1, "MENU_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const-string v1, "MENU_UP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const-string v1, "MENU_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_RIGHT:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 86
    invoke-static {}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->$values()[Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$MenuDirection;

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

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/CustomMenuView$MenuDirection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 86
    const-class v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/CustomMenuView$MenuDirection;
    .locals 1

    .line 86
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v0}, [Lcom/metamoji/ui/CustomMenuView$MenuDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    return-object v0
.end method
