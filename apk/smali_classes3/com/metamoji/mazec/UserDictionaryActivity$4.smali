.class Lcom/metamoji/mazec/UserDictionaryActivity$4;
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


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/UserDictionaryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity$4;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
