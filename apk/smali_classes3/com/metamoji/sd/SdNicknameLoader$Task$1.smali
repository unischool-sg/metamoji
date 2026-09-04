.class Lcom/metamoji/sd/SdNicknameLoader$Task$1;
.super Ljava/lang/Object;
.source "SdNicknameLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdNicknameLoader$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdNicknameLoader$Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-static {v0}, Lcom/metamoji/sd/SdNicknameLoader$Task;->-$$Nest$fget_createUserView(Lcom/metamoji/sd/SdNicknameLoader$Task;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-static {v0}, Lcom/metamoji/sd/SdNicknameLoader$Task;->-$$Nest$fget_createUserView(Lcom/metamoji/sd/SdNicknameLoader$Task;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-static {v1}, Lcom/metamoji/sd/SdNicknameLoader$Task;->-$$Nest$fget_createUser(Lcom/metamoji/sd/SdNicknameLoader$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-static {v0}, Lcom/metamoji/sd/SdNicknameLoader$Task;->-$$Nest$fget_updateUserView(Lcom/metamoji/sd/SdNicknameLoader$Task;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-static {v0}, Lcom/metamoji/sd/SdNicknameLoader$Task;->-$$Nest$fget_updateUserView(Lcom/metamoji/sd/SdNicknameLoader$Task;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task$1;->this$1:Lcom/metamoji/sd/SdNicknameLoader$Task;

    invoke-static {v1}, Lcom/metamoji/sd/SdNicknameLoader$Task;->-$$Nest$fget_updateUser(Lcom/metamoji/sd/SdNicknameLoader$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
