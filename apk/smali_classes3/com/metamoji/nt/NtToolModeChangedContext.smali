.class public Lcom/metamoji/nt/NtToolModeChangedContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "NtToolModeChangedContext.java"


# instance fields
.field private editMode:Lcom/metamoji/nt/NtDocument$EditMode;

.field private toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/metamoji/nt/NtToolModeChangedContext;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 23
    iput-object p2, p0, Lcom/metamoji/nt/NtToolModeChangedContext;->toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

    return-void
.end method


# virtual methods
.method public getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/metamoji/nt/NtToolModeChangedContext;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    return-object v0
.end method

.method public getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/nt/NtToolModeChangedContext;->toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object v0
.end method
