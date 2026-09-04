.class public final synthetic Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lokhttp3/Response;

    invoke-static {p1}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getClipList$lambda$10(Lokhttp3/Response;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method
