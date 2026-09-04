.class Lcom/metamoji/noteanytime/EditorActivity$77;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7857
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$77;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTextUnit(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public tapped(Z)V
    .locals 0

    .line 7860
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$77;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->closeSetTextUnitLocationView()V

    return-void
.end method

.method public tappedInTextUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 0

    return-void
.end method
