.class public final synthetic Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/UiMediaStore;->saveSingleBitmap$lambda$3(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/metamoji/ui/task/DynamicStreamSource$Builder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
