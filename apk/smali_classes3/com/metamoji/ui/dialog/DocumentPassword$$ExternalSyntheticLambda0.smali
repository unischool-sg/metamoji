.class public final synthetic Lcom/metamoji/ui/dialog/DocumentPassword$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DocumentPassword;->lambda$onDone$0(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
