.class public final synthetic Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lokhttp3/MultipartBody$Builder;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/MultipartBody$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda7;->f$0:Lokhttp3/MultipartBody$Builder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda7;->f$0:Lokhttp3/MultipartBody$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->setAuthData$lambda$3(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method
