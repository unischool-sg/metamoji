.class public final synthetic Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field public final synthetic f$1:Lcom/metamoji/nt/NtNoteTemplateSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtNoteTemplateSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/nt/NtNoteTemplateSettings;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/nt/NtNoteTemplateSettings;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/nt/NtEditorWindowController;->lambda$handleNewDocTemplateFromCurrent$3(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtNoteTemplateSettings;Ljava/lang/Boolean;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
