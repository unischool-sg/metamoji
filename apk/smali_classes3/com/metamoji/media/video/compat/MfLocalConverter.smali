.class public final Lcom/metamoji/media/video/compat/MfLocalConverter;
.super Lcom/metamoji/df/controller/Settings;
.source "MfLocalConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0005J\u0006\u0010\u0011\u001a\u00020\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfLocalConverter;",
        "Lcom/metamoji/df/controller/Settings;",
        "manager",
        "Lcom/metamoji/df/controller/SettingsManager;",
        "type",
        "",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "<init>",
        "(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V",
        "recordForLocalID",
        "Lcom/metamoji/media/video/compat/MfLocal;",
        "localID",
        "find",
        "localId",
        "delete",
        "",
        "convertIfNeeds",
        "",
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
.field public static final Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

.field private static final LOCAL_ID_PREFIX:Ljava/lang/String; = "vid_"

.field public static final MODELTYPE:Ljava/lang/String; = "MMJMfLocalCollections"

.field private static final VERSION_1:I = 0x1

.field public static final VERSION_LATEST:I = 0x1

.field public static final VERSION_NUMBER:Ljava/lang/String; = "1.00"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/compat/MfLocalConverter;->Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static final buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/compat/MfLocalConverter;->Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;->buildInitModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static final getPropName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/compat/MfLocalConverter;->Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;->getPropName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final recordForLocalID(Ljava/lang/String;)Lcom/metamoji/media/video/compat/MfLocal;
    .locals 2

    .line 55
    sget-object v0, Lcom/metamoji/media/video/compat/MfLocalConverter;->Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;->getPropName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/metamoji/media/video/compat/MfLocalConverter;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    new-instance v1, Lcom/metamoji/media/video/compat/MfLocal;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/media/video/compat/MfLocal;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final convertIfNeeds()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final delete(Ljava/lang/String;)V
    .locals 2

    const-string v0, "localId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/media/video/compat/MfLocalConverter;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/compat/MfLocalConverter;->Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    invoke-virtual {v1, p1}, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;->getPropName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public final find(Ljava/lang/String;)Lcom/metamoji/media/video/compat/MfLocal;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/compat/MfLocalConverter;->recordForLocalID(Ljava/lang/String;)Lcom/metamoji/media/video/compat/MfLocal;

    move-result-object p1

    return-object p1
.end method
