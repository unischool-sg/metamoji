.class public final enum Lcom/metamoji/un/video/WvvChairmansAction;
.super Ljava/lang/Enum;
.source "IWvvChairmansDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/video/WvvChairmansAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/un/video/WvvChairmansAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "PLAY",
        "PAUSE",
        "SEEK",
        "CLOSE",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/un/video/WvvChairmansAction;

.field public static final enum CLOSE:Lcom/metamoji/un/video/WvvChairmansAction;

.field public static final enum NONE:Lcom/metamoji/un/video/WvvChairmansAction;

.field public static final enum PAUSE:Lcom/metamoji/un/video/WvvChairmansAction;

.field public static final enum PLAY:Lcom/metamoji/un/video/WvvChairmansAction;

.field public static final enum SEEK:Lcom/metamoji/un/video/WvvChairmansAction;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/un/video/WvvChairmansAction;
    .locals 5

    sget-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->NONE:Lcom/metamoji/un/video/WvvChairmansAction;

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansAction;->PLAY:Lcom/metamoji/un/video/WvvChairmansAction;

    sget-object v2, Lcom/metamoji/un/video/WvvChairmansAction;->PAUSE:Lcom/metamoji/un/video/WvvChairmansAction;

    sget-object v3, Lcom/metamoji/un/video/WvvChairmansAction;->SEEK:Lcom/metamoji/un/video/WvvChairmansAction;

    sget-object v4, Lcom/metamoji/un/video/WvvChairmansAction;->CLOSE:Lcom/metamoji/un/video/WvvChairmansAction;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/video/WvvChairmansAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/metamoji/un/video/WvvChairmansAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/WvvChairmansAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->NONE:Lcom/metamoji/un/video/WvvChairmansAction;

    .line 18
    new-instance v0, Lcom/metamoji/un/video/WvvChairmansAction;

    const-string v1, "PLAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/WvvChairmansAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->PLAY:Lcom/metamoji/un/video/WvvChairmansAction;

    .line 19
    new-instance v0, Lcom/metamoji/un/video/WvvChairmansAction;

    const-string v1, "PAUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/WvvChairmansAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->PAUSE:Lcom/metamoji/un/video/WvvChairmansAction;

    .line 20
    new-instance v0, Lcom/metamoji/un/video/WvvChairmansAction;

    const-string v1, "SEEK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/WvvChairmansAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->SEEK:Lcom/metamoji/un/video/WvvChairmansAction;

    .line 21
    new-instance v0, Lcom/metamoji/un/video/WvvChairmansAction;

    const-string v1, "CLOSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/WvvChairmansAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->CLOSE:Lcom/metamoji/un/video/WvvChairmansAction;

    invoke-static {}, Lcom/metamoji/un/video/WvvChairmansAction;->$values()[Lcom/metamoji/un/video/WvvChairmansAction;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->$VALUES:[Lcom/metamoji/un/video/WvvChairmansAction;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/un/video/WvvChairmansAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/video/WvvChairmansAction;
    .locals 1

    const-class v0, Lcom/metamoji/un/video/WvvChairmansAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/video/WvvChairmansAction;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/video/WvvChairmansAction;
    .locals 1

    sget-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->$VALUES:[Lcom/metamoji/un/video/WvvChairmansAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/video/WvvChairmansAction;

    return-object v0
.end method
