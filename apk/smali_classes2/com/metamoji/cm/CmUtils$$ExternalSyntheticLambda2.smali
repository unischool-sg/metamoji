.class public final synthetic Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$4:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p6, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$4:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v5, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;->f$5:Z

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/metamoji/cm/CmUtils;->lambda$selectDialog$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
