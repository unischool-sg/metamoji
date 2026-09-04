.class public final synthetic Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$2$$ExternalSyntheticLambda1;
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
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {p1}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$2;->invokeSuspend$lambda$1(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    return-object p1
.end method
