.class public final enum Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;
.super Ljava/lang/Enum;
.source "DrHighlightProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

.field public static final enum ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

.field public static final enum EDIT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

.field public static final enum REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

.field public static final enum REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;
    .locals 5

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->EDIT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 9
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    const-string v1, "ADD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    const-string v1, "REMOVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    const-string v1, "REPAINT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    const-string v1, "EDIT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->EDIT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 6
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->$values()[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->$VALUES:[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;
    .locals 1

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->$VALUES:[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    return-object v0
.end method
