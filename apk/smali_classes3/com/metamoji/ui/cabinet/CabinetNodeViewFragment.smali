.class public abstract Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "CabinetNodeViewFragment.java"


# instance fields
.field private _treeItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCabinetTreeItem()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->_treeItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object v0
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract reloadAllView()V
.end method

.method public update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->_treeItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-void
.end method
