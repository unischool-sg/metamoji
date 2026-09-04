.class public final synthetic Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lokhttp3/Request;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Request;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda6;->f$0:Lokhttp3/Request;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda6;->f$0:Lokhttp3/Request;

    invoke-static {v0}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest$lambda$6(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
