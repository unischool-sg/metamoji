.class public final enum Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

.field public static final enum Cancel:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

.field public static final enum Normal:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

.field public static final enum NotMember:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

.field public static final enum WaitSync:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;
    .locals 4

    .line 304
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->NotMember:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sget-object v1, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sget-object v2, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->WaitSync:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sget-object v3, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Cancel:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 305
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    const-string v1, "NotMember"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->NotMember:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 306
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    const-string v1, "Normal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 307
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    const-string v1, "WaitSync"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->WaitSync:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 308
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    const-string v1, "Cancel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Cancel:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 304
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->$values()[Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->$VALUES:[Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

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

    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 304
    const-class v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;
    .locals 1

    .line 304
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->$VALUES:[Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    invoke-virtual {v0}, [Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    return-object v0
.end method
