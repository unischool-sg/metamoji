.class Lcom/metamoji/nt/NtEditorWindowController$22$1;
.super Lcom/metamoji/nt/NtPageController$BGImageParams;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$22;->done(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$22;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$22;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3131
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$22$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$22;

    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$BGImageParams;-><init>()V

    const/4 p1, 0x0

    .line 3133
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$22$1;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 3134
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$22$1;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 3135
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$22$1;->Color:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3136
    iput p1, p0, Lcom/metamoji/nt/NtEditorWindowController$22$1;->Opacity:F

    .line 3137
    iput p1, p0, Lcom/metamoji/nt/NtEditorWindowController$22$1;->ColorOpacity:F

    return-void
.end method
