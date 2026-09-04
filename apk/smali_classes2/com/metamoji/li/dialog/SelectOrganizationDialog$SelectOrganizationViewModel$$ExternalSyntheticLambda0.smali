.class public final synthetic Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;

    invoke-static {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->addOrganizationReceptor$lambda$0(Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
