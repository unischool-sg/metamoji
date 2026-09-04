.class abstract Lcom/metamoji/ui/UiCameraBroker$CameraContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "UiCameraBroker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiCameraBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CameraContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Ljava/lang/String;",
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiCameraBroker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiCameraBroker.kt\ncom/metamoji/ui/UiCameraBroker$CameraContract\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\"\u0018\u0000 \"2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u001aH\u0016R\u0012\u0010\u0006\u001a\u00020\u0002X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0002X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0012\u0010\u000b\u001a\u00020\u0002X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0012\u0010\r\u001a\u00020\u000eX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u0002X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0008R\u0012\u0010\u0017\u001a\u00020\u0002X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0008\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/ui/UiCameraBroker$CameraContract;",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "",
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "<init>",
        "()V",
        "mAction",
        "getMAction",
        "()Ljava/lang/String;",
        "mDefaultDisplayName",
        "getMDefaultDisplayName",
        "mMimeType",
        "getMMimeType",
        "mMediaDirectory",
        "Ljava/io/File;",
        "getMMediaDirectory",
        "()Ljava/io/File;",
        "mCollection",
        "Landroid/net/Uri;",
        "getMCollection",
        "()Landroid/net/Uri;",
        "mDisplayNameKey",
        "getMDisplayNameKey",
        "mMimeTypeKey",
        "getMMimeTypeKey",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "",
        "intent",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;

.field private static workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->Companion:Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWorkFile$cp()Lcom/metamoji/ui/UiCameraBroker$MediaFile;
    .locals 1

    .line 95
    sget-object v0, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-object v0
.end method

.method public static final synthetic access$setWorkFile$cp(Lcom/metamoji/ui/UiCameraBroker$MediaFile;)V
    .locals 0

    .line 95
    sput-object p0, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 95
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMDefaultDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 111
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 112
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMDisplayNameKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMMimeTypeKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMCollection()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    new-instance p2, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    move-object p2, v3

    goto :goto_0

    .line 119
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->getMMediaDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance p2, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    invoke-direct {p2, v1, p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;-><init>(Ljava/io/File;Landroid/content/Context;)V

    :goto_0
    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {p2}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v3, p2

    .line 111
    :cond_3
    sput-object v3, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-object v0
.end method

.method protected abstract getMAction()Ljava/lang/String;
.end method

.method protected abstract getMCollection()Landroid/net/Uri;
.end method

.method protected abstract getMDefaultDisplayName()Ljava/lang/String;
.end method

.method protected abstract getMDisplayNameKey()Ljava/lang/String;
.end method

.method protected abstract getMMediaDirectory()Ljava/io/File;
.end method

.method protected abstract getMMimeType()Ljava/lang/String;
.end method

.method protected abstract getMMimeTypeKey()Ljava/lang/String;
.end method

.method public parseResult(ILandroid/content/Intent;)Lcom/metamoji/ui/UiCameraBroker$MediaFile;
    .locals 1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 128
    sget-object p1, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    sput-object v0, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-object p1

    .line 130
    :cond_0
    sget-object p1, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->delete()V

    .line 131
    :cond_1
    sput-object v0, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->workFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->parseResult(ILandroid/content/Intent;)Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    move-result-object p1

    return-object p1
.end method
