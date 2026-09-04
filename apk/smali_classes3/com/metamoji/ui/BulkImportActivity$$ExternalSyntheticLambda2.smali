.class public final synthetic Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Lcom/metamoji/ui/BulkImportActivity;->lambda$doExport$1(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
