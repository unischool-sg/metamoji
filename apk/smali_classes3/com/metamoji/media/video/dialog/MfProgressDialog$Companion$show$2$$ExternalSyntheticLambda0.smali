.class public final synthetic Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->invokeSuspend$lambda$1$lambda$0(Lcom/metamoji/media/video/dialog/MfProgressDialog;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
