.class Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$2;
.super Ljava/lang/Object;
.source "RecognizeUserDictionaryBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->showMessage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$2;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$2;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;

    invoke-virtual {p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->finish()V

    return-void
.end method
