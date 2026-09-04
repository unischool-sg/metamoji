.class public final enum Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;
.super Ljava/lang/Enum;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INIT",
        "BEGIN",
        "PROGRESS",
        "ENABLE_CANCEL",
        "END",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

.field public static final enum BEGIN:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

.field public static final enum ENABLE_CANCEL:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

.field public static final enum END:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

.field public static final enum INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

.field public static final enum PROGRESS:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;
    .locals 5

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->BEGIN:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->PROGRESS:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    sget-object v3, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->ENABLE_CANCEL:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    sget-object v4, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->END:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 452
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    .line 453
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    const-string v1, "BEGIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->BEGIN:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    .line 454
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    const-string v1, "PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->PROGRESS:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    .line 455
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    const-string v1, "ENABLE_CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->ENABLE_CANCEL:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    .line 456
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    const-string v1, "END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->END:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->$values()[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->$VALUES:[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 451
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;
    .locals 1

    const-class v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->$VALUES:[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    return-object v0
.end method
