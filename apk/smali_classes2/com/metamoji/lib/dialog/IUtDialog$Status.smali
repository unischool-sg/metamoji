.class public final enum Lcom/metamoji/lib/dialog/IUtDialog$Status;
.super Ljava/lang/Enum;
.source "UtDialogDef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/IUtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/IUtDialog$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000bR\u0011\u0010\u0012\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000bR\u0011\u0010\u0014\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000bR\u0011\u0010\u0016\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000bR\u0011\u0010\u0018\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000bj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/IUtDialog$Status;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "POSITIVE",
        "NEGATIVE",
        "NEUTRAL",
        "finished",
        "",
        "getFinished",
        "()Z",
        "negative",
        "getNegative",
        "cancel",
        "getCancel",
        "no",
        "getNo",
        "positive",
        "getPositive",
        "ok",
        "getOk",
        "yes",
        "getYes",
        "neutral",
        "getNeutral",
        "dialog"
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/IUtDialog$Status;

.field public static final enum NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

.field public static final enum NEUTRAL:Lcom/metamoji/lib/dialog/IUtDialog$Status;

.field public static final enum POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

.field public static final enum UNKNOWN:Lcom/metamoji/lib/dialog/IUtDialog$Status;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/IUtDialog$Status;
    .locals 4

    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->UNKNOWN:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    sget-object v1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    sget-object v2, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    sget-object v3, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEUTRAL:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->UNKNOWN:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    .line 14
    new-instance v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;

    const-string v1, "POSITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    .line 15
    new-instance v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;

    const-string v1, "NEGATIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    .line 16
    new-instance v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEUTRAL:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-static {}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->$values()[Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->$VALUES:[Lcom/metamoji/lib/dialog/IUtDialog$Status;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/IUtDialog$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialog$Status;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/IUtDialog$Status;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/IUtDialog$Status;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->$VALUES:[Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/IUtDialog$Status;

    return-object v0
.end method


# virtual methods
.method public final getCancel()Z
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getFinished()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->UNKNOWN:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNegative()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNeutral()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEUTRAL:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNo()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOk()Z
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPositive()Z
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getYes()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
