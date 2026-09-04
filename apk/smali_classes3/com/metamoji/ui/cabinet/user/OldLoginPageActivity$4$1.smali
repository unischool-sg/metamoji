.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4$1;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4$1;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 398
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->resetClientSettings()V

    return-void
.end method
