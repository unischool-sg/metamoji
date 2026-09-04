.class final enum Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;
.super Ljava/lang/Enum;
.source "MfProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContinuationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CONFIRM",
        "CANCEL",
        "IGNORE",
        "RETRY",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

.field public static final enum CANCEL:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

.field public static final enum CONFIRM:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

.field public static final enum IGNORE:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

.field public static final enum RETRY:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;
    .locals 4

    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CONFIRM:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CANCEL:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    sget-object v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->IGNORE:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    sget-object v3, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->RETRY:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 251
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    const-string v1, "CONFIRM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CONFIRM:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    .line 252
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    const-string v1, "CANCEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CANCEL:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    .line 253
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    const-string v1, "IGNORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->IGNORE:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    .line 254
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    const-string v1, "RETRY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->RETRY:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->$values()[Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->$VALUES:[Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->$VALUES:[Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    return-object v0
.end method
