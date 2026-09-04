.class Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorderBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncTimeLabel(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->_timeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
