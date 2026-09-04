.class public final synthetic Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->createBodyView$lambda$2$lambda$1(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
