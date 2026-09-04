.class public final synthetic Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/model/LoginViewModel;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$2:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/model/LoginViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/model/LoginViewModel;

    iput-object p2, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;->f$2:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/model/LoginViewModel;

    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;->f$2:Landroidx/fragment/app/FragmentActivity;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->invokeSuspend$lambda$0(Lcom/metamoji/li/model/LoginViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/IUtDialog;

    move-result-object p1

    return-object p1
.end method
