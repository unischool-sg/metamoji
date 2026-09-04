.class Lcom/metamoji/ui/HoverSelectorView$modeButton;
.super Ljava/lang/Object;
.source "HoverSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/HoverSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "modeButton"
.end annotation


# instance fields
.field public enable:Z

.field public image:Landroid/graphics/Bitmap;

.field public image_p:Landroid/graphics/Bitmap;

.field public mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field final synthetic this$0:Lcom/metamoji/ui/HoverSelectorView;

.field public x:F

.field public y:F


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/HoverSelectorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 981
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView$modeButton;->this$0:Lcom/metamoji/ui/HoverSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/HoverSelectorView;Lcom/metamoji/ui/HoverSelectorView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HoverSelectorView$modeButton;-><init>(Lcom/metamoji/ui/HoverSelectorView;)V

    return-void
.end method
