.class public final synthetic Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1;->invokeSuspend$lambda$1(Lkotlin/jvm/functions/Function0;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
