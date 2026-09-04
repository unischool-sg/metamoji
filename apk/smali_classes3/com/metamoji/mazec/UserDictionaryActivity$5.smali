.class Lcom/metamoji/mazec/UserDictionaryActivity$5;
.super Ljava/lang/Object;
.source "UserDictionaryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/UserDictionaryActivity;->onDelete(Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

.field final synthetic val$dlg:Landroid/content/DialogInterface;

.field final synthetic val$w:Lcom/metamoji/mazec/converter/MmjiWord;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/UserDictionaryActivity;Lcom/metamoji/mazec/converter/MmjiWord;Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->val$w:Lcom/metamoji/mazec/converter/MmjiWord;

    iput-object p3, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->val$dlg:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 317
    iget-object p2, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    iget-object p2, p2, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->val$w:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->removeUserWord(Lcom/metamoji/mazec/converter/MmjiWord;)Z

    .line 318
    iget-object p2, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    invoke-static {p2}, Lcom/metamoji/mazec/UserDictionaryActivity;->-$$Nest$mupdateWordList(Lcom/metamoji/mazec/UserDictionaryActivity;)V

    .line 319
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 320
    iget-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity$5;->val$dlg:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
