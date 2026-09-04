.class public final enum Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;
.super Ljava/lang/Enum;
.source "LibraryPartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryPartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

.field public static final enum ADD_BOOKMARK:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

.field public static final enum CREATE_HOME_SHORTCUT:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

.field public static final enum SHOW_PARTINFO:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

.field public static final enum START_ARRANGEMENTMODE:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

.field public static final enum WIDGET_ADD:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

.field public static final enum WIDGET_REMOVE:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;
    .locals 6

    .line 50
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->ADD_BOOKMARK:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    sget-object v1, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->SHOW_PARTINFO:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    sget-object v2, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->START_ARRANGEMENTMODE:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    sget-object v3, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->CREATE_HOME_SHORTCUT:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    sget-object v4, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->WIDGET_ADD:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    sget-object v5, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->WIDGET_REMOVE:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    const-string v1, "ADD_BOOKMARK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->ADD_BOOKMARK:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    .line 52
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    const-string v1, "SHOW_PARTINFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->SHOW_PARTINFO:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    .line 53
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    const-string v1, "START_ARRANGEMENTMODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->START_ARRANGEMENTMODE:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    .line 55
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    const-string v1, "CREATE_HOME_SHORTCUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->CREATE_HOME_SHORTCUT:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    .line 56
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    const-string v1, "WIDGET_ADD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->WIDGET_ADD:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    .line 57
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    const-string v1, "WIDGET_REMOVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->WIDGET_REMOVE:Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    .line 50
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->$values()[Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->$VALUES:[Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    const-class v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;
    .locals 1

    .line 50
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->$VALUES:[Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    invoke-virtual {v0}, [Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    return-object v0
.end method
