.class public final synthetic Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->selectFile$lambda$1(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
