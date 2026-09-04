.class public final enum Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;
.super Ljava/lang/Enum;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        "",
        "finished",
        "",
        "<init>",
        "(Ljava/lang/String;IZ)V",
        "getFinished",
        "()Z",
        "INIT",
        "SUCCEEDED",
        "FAILED",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

.field public static final enum FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

.field public static final enum INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

.field public static final enum SUCCEEDED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;


# instance fields
.field private final finished:Z


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;
    .locals 3

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->SUCCEEDED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 423
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    .line 424
    new-instance v3, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "SUCCEEDED"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->SUCCEEDED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    .line 425
    new-instance v4, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v5, "FAILED"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->$values()[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->$VALUES:[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 422
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p3, p5

    .line 422
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;
    .locals 1

    const-class v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->$VALUES:[Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    return-object v0
.end method


# virtual methods
.method public final getFinished()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->finished:Z

    return v0
.end method
