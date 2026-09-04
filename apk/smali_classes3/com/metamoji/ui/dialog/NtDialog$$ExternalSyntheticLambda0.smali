.class public final synthetic Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/dialog/NtDialog;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/dialog/NtDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/dialog/NtDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/dialog/NtDialog;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/dialog/NtDialog;->safeShow$lambda$8(Lcom/metamoji/ui/dialog/NtDialog;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
