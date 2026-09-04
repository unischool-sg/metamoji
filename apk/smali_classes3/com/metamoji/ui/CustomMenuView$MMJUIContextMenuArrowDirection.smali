.class final enum Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;
.super Ljava/lang/Enum;
.source "CustomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MMJUIContextMenuArrowDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

.field public static final enum MMJUI_CONTEXTMENU_DIRECTION_DEFAULT:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

.field public static final enum MMJUI_CONTEXTMENU_DIRECTION_DOWN:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

.field public static final enum MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;
    .locals 3

    .line 82
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_DEFAULT:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_DOWN:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 83
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    const-string v1, "MMJUI_CONTEXTMENU_DIRECTION_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_DEFAULT:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    const-string v1, "MMJUI_CONTEXTMENU_DIRECTION_UP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    const-string v1, "MMJUI_CONTEXTMENU_DIRECTION_DOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_DOWN:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    .line 82
    invoke-static {}, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->$values()[Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 82
    const-class v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;
    .locals 1

    .line 82
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    invoke-virtual {v0}, [Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    return-object v0
.end method
