.class public final enum Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
.super Ljava/lang/Enum;
.source "CustomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MMJUIMenuStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum CTX_BOTH_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum CTX_RIGHT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field public static final enum UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
    .locals 11

    .line 66
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_RIGHT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v5, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v6, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v7, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v8, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_BOTH_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v9, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v10, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    filled-new-array/range {v0 .. v10}, [Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "ACTION_SUBMENU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "CTX_NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "CTX_LEFT_ROUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "CTX_RIGHT_ROUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_RIGHT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "CTX_MORE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "CTX_SUBMENU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "ACTION_NORMAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "ACTION_HASSUBMENUS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "CTX_BOTH_ROUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_BOTH_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 68
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "UNDO_REDO_COMBO_MENU"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const-string v1, "ACTION_HASCHECK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 66
    invoke-static {}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->$values()[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 66
    const-class v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
    .locals 1

    .line 66
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->$VALUES:[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v0}, [Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    return-object v0
.end method
