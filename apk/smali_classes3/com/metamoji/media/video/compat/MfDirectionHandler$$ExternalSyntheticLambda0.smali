.class public final synthetic Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/compat/MfDirectionHandler;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/compat/MfDirectionHandler;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/compat/MfDirectionHandler;

    iput-object p2, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/compat/MfDirectionHandler;

    iget-object v1, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/media/video/compat/MfDirectionHandler;->handleSharingDirection$lambda$0(Lcom/metamoji/media/video/compat/MfDirectionHandler;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
