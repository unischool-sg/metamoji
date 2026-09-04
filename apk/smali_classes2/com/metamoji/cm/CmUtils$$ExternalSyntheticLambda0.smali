.class public final synthetic Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/cm/CmUtils;->lambda$confirmDialog$3(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
