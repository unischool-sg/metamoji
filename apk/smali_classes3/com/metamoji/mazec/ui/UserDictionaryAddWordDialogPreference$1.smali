.class Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference$1;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->-$$Nest$maddWord(Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
